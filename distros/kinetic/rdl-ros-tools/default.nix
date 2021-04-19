
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rdl-dynamics, rdl-msgs, rdl-urdfreader, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rdl-ros-tools";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl_ros_tools/1.1.0-0/rdl_release-release-kinetic-rdl_ros_tools-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl_ros_tools-1.1.0-0.tar.gz";
    sha256 = "ce08c88be96e91d43c99d78662d459c16c09d4a92f96739b9d35cc409c0e0cf3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rdl-dynamics rdl-msgs rdl-urdfreader roscpp rostest sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface into rdl tools'';
    license = with lib.licenses; [ "zlib" ];
  };
}
