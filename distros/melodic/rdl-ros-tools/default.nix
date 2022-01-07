
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rdl-dynamics, rdl-msgs, rdl-urdfreader, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rdl-ros-tools";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_ros_tools/3.2.0-1/rdl_release-release-melodic-rdl_ros_tools-3.2.0-1.tar.gz";
    name = "rdl_release-release-melodic-rdl_ros_tools-3.2.0-1.tar.gz";
    sha256 = "36c236da8fa738216e65211f173f73a203d2b99a582e396aabf170e26d841483";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rdl-dynamics rdl-msgs rdl-urdfreader roscpp rostest sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface into rdl tools'';
    license = with lib.licenses; [ "zlib" ];
  };
}
