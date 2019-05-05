
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-msgs";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_msgs/1.0.3-0.tar.gz;
    sha256 = "c4d63d427acace6162d68513c68fc64da0d5631be84c81ac6193ea339ec163f0";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
