
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-description";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_description/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "69652845bda9556aaf54f825c7f0554ed7a0d0270cd521bd50d5f6299250318b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    license = with lib.licenses; [ asl20 ];
  };
}
