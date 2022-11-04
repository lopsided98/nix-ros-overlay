
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-melodic-slime-wrapper";
  version = "0.4.16-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/slime_wrapper/0.4.16-1.tar.gz";
    name = "0.4.16-1.tar.gz";
    sha256 = "e7e2a818ac01d6b941f20940051f9656a0be07afac18f76adf66ff761569575b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    license = with lib.licenses; [ "PD" ];
  };
}
