
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sdc21x0";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/sdc21x0/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "7c13abb1e3f9012598ddfebe3731916e71c453340276da1f545e8ac90e1b2a76";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the sdc21x0 motor controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
