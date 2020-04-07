import * as React from 'react';
import { createStackNavigator  } from '@react-navigation/stack';
import TabBarIcon from '../components/TabBarIcon';
import HomeScreen from '../screens/Home/HomeScreen';
import LinksScreen from '../screens/Profile/LinksScreen';
import TFSScreen from '../screens/TFS/TFSScreen';
import TrafficSignList from '../screens/TFS/TFSListScreen';
import DetailScreen from '../screens/TFS/DetailScreen';
import QuestionPractice from '../screens/Question/QuestionPractice';
import QuestionSet from '../screens/Question/QuestionSet';
import MemoryTricks from '../screens/Question/MemoryTricks';

const Stack = createStackNavigator();
const INITIAL_ROUTE_NAME = 'Home';

export default function StackNavigator() {

  return (
    <Stack.Navigator initialRouteName={INITIAL_ROUTE_NAME}>
      <Stack.Screen
        name="Home"
        component={HomeScreen}
        options={{
          title: 'Get Started',
          tabBarIcon: ({ focused }) => <TabBarIcon focused={focused} name="md-code-working" />,
        }}
      />
      <Stack.Screen
        name="QuestionPractice"
        component={QuestionPractice}
        options={{
          title: 'Ôn tập câu hỏi',
        }}
      />
      <Stack.Screen 
        name="QuestionSet" 
        component={QuestionSet} 
        options={{ 
          title: 'Ôn tập Khái Niệm', 
        }} 
      />
      <Stack.Screen
        name="MemoryTricks"
        component={MemoryTricks}
        initialParams={{ modalVisible: false, questionSet: 7}}
      />
       <Stack.Screen
        name="Detail"
        component={DetailScreen}
        options={{
          title: 'Danh sách',
          tabBarIcon: ({ focused }) => <TabBarIcon focused={focused} name="md-code-working" />,
        }}
      />
            <Stack.Screen
        name="Link"
        component={LinksScreen}
        options={{
          title: 'This link',
          tabBarIcon: ({ focused }) => <TabBarIcon focused={focused} name="md-code-working" />,
        }}
      />
      <Stack.Screen
        name="TFS"
        component={TFSScreen}
        options={{
          title: 'Biển báo giao thông',
          tabBarIcon: ({ focused }) => <TabBarIcon focused={focused} name="md-code-working" />,
        }}
      />
       <Stack.Screen
        name="TFSL"
        component={TrafficSignList}
        options={{
          title: 'Danh sách',
          tabBarIcon: ({ focused }) => <TabBarIcon focused={focused} name="md-code-working" />,
        }}
      />

    </Stack.Navigator>
  );
}

