
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-topic, sensor-msgs, rqt-gui, catkin, rostopic, rospy, rqt-py-common, python-qt-binding, rosnode }:
buildRosPackage {
  pname = "ros-lunar-rqt-moveit";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_moveit-release/archive/release/lunar/rqt_moveit/0.5.7-0.tar.gz;
    sha256 = "c32768d2983be346e38ed35ae186cdddee7bb42caf03df027064974d0e3fa5af";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-topic sensor-msgs rqt-gui rostopic rospy rqt-py-common python-qt-binding rosnode ];
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
