
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-msgs";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_msgs/1.0.3-0.tar.gz;
    sha256 = "9fc0cf592d48bbfe8ae128e2149ac7d7029081c8deca00d2c10f926c607533ec";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
