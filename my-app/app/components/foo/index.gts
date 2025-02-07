import { Component, tracked, modifier } from 'tinyember';
import { on } from 'tinyember/modifier';

export interface FooSignature {
  Args: unknown;
  Blocks: {
    default: [];
  };
  Element: null;
}

const changeColor = modifier((element: HTMLDivElement, [color]) => {
  element.style.backgroundColor = color;
});

export default class Foo extends Component<FooSignature> {
  @tracked bar = 'world';
  @tracked color = 'red';

  toggle = () => {
    this.color = this.color === 'red' ? 'blue' : 'red';
    this.bar = this.bar === 'world' ? 'universe' : 'world';
  };

  <template>
    <div {{changeColor}}>
      Hello,
      {{this.color}}
      {{this.bar}}
    </div>
    <button type="button" {{on "click" this.toggle}}>
      Click me
    </button>
  </template>
}
