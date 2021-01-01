
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, rosnode, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, rqt-topic, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-moveit";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_moveit-release/archive/release/melodic/rqt_moveit/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "979c1ec400699c3597ee3bc9044aeab021f3cbb79bdf2edfe7572c0ee7a96f96";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding rosnode rospy rostopic rqt-gui rqt-gui-py rqt-py-common rqt-topic sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An rqt-based tool that assists monitoring tasks
   for <a href="http://ros.org/wiki/moveit">MoveIt!</a> motion planner
   developers and users. Currently the following items are monitored if they
   are either running, existing or published:
   <ul>
   <li>Node: /move_group</li>
   <li>Parameter: [/robot_description, /robot_description_semantic]</li>
   <li>Topic: Following types are monitored. Published &quot;names&quot; are ignored.<br/>
       [sensor_msgs/PointCloud, sensor_msgs/PointCloud2,
        sensor_msgs/Image, sensor_msgs/CameraInfo]</li>
   </ul>
   Since this package is not made by the MoveIt! development team (although with
   assistance from the them), please post issue reports to the designated
   tracker (not MoveIt!'s main tracker).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
