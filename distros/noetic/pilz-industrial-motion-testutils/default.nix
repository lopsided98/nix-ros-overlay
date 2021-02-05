
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-testutils";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_industrial_motion_testutils/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "819302e83331cc5ee9fef601ea175f8ac109de426b635360f273983a0d1be146";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-commander ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
