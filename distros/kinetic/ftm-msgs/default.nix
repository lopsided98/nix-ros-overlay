
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ftm-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/guykhazma/ftm_msgs-release/archive/release/kinetic/ftm_msgs/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "ab1a42774b066258b5a581eb339d682667b1c34f56d2ad85bb563331a3534f5b";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs message-generation ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>The ftm_msgs package provides a recommended interface to be used when developing FTM application in ROS.</p>
	<p> The recommended interface consists of three main blocks:
	<br/>
	1. FTMSensor - a node that performs periodic FTM measurements for a given list of FTM Responders.
	<br/>
	2. LCIActionServer - An action server node that implements the following:
	<br/>
		- Performs an on-demand LCI requests for a given list of FTM responders
		<br/>
		- Exposes Action to perform LCI request for a list of responders
		<br/>
		- Can be configured to publish LCI measurements results to a topic. If so, publishes results to ftm/lci topic
	<br/>
	3. LCIRegistry -  An optional node implementing the following:
	<br/>
		- Stores FTM Responders data
		<br/>
		- Subscribes to ftm/lci topic in order to update its data structure
		<br/>
		- Exposes CRUD services
		<br/>
	</p>
	<p>ftm_msgs package provides the definitions of the Messages, Services and Actions needed in order to implement the architecture described above.</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
