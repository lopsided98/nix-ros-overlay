
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-testutils";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_industrial_motion_testutils/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "47709596acd2e8b133d3ba109c87e9bd762a41bf7272b35f7694b1b4f4a3f4db";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-commander ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
