
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, melfa-description, melfa-driver, rv4fl-moveit-config, rv7fl-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-melfa-robot";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/melfa_robot/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "1efab4205f76db2a0c708c47f7048ec5b04f8e8842ac63efe31fd5e7d7c14138";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ melfa-description melfa-driver rv4fl-moveit-config rv7fl-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The melfa_robot meta package'';
    license = with lib.licenses; [ asl20 "CC-BY-SA" ];
  };
}
