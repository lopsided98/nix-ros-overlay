
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rclpy, rosidl-default-generators, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-robot-monitor";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_monitor-release/archive/release/jazzy/rqt_robot_monitor/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "8a957619de3a08de5ad1a80ec1f35d6b4580ec6eb3b57e1a839e744b547911e1";
  };

  buildType = "ament_python";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "rqt_robot_monitor displays diagnostics_agg topics messages that
   are published by <a href=\"http://www.ros.org/wiki/diagnostic_aggregator\">diagnostic_aggregator</a>.
   rqt_robot_monitor is a direct port to rqt of
   <a href=\"http://www.ros.org/wiki/robot_monitor\">robot_monitor</a>. All
   diagnostics are fall into one of three tree panes depending on the status of
   diagnostics (normal, warning, error/stale). Status are shown in trees to
   represent their hierarchy. Worse status dominates the higher level status.<br/>
   <ul>
    Ex. 'Computer' category has 3 sub devices. 2 are green but 1 is error. Then
        'Computer' becomes error.
   </ul>
  You can look at the detail of each status by double-clicking the tree nodes.<br/>

  Currently re-usable API to other pkgs are not explicitly provided.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
