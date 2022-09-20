
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-std-capabilities";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/std_capabilities-release/archive/release/melodic/std_capabilities/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "56846414a12f4f667aec42eaef1c602c355854fdaa729692117961e54d94a9b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains standard capability interfaces, which describe common robot capabilities in terms of ROS concepts such as topics, services, actions, and parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
