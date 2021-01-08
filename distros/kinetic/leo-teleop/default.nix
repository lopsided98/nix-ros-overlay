
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kinetic-leo-teleop";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/kinetic/leo_teleop/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "4fdf97e412f3262263883891884d7235abfe9b4fd506c36429a889387d05505c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
