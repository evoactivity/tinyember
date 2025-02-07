import Route from 'ember-route-template';
import { pageTitle } from 'ember-page-title';
import Foo from '../components/foo';

export default Route(
  <template>
    {{pageTitle "MyApp"}}

    {{outlet}}

    <Foo />
  </template>
);
