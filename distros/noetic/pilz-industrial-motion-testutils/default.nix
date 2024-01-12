
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-testutils";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_industrial_motion_testutils/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "fd2e4a3f4c386eec28fe42fe92f53b64bbeef13b013d3dcf6f79cbf106a572ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-commander ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
