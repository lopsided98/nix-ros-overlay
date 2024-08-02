
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers-cartesian";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/ros_controllers_cartesian/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "a62b89093dfc4cea5bc44b145e0d004b62e7731f4a326af88a08590a5210fecb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapackage for Cartesian ROS controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
