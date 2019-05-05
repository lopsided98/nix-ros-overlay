
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, catkin, uuv-teleop }:
buildRosPackage {
  pname = "ros-lunar-eca-a9-control";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/eca_a9-release/archive/release/lunar/eca_a9_control/0.1.6-0.tar.gz;
    sha256 = "73f06a0f84ca7c8fcf25ce9951f8ed8751489aa0be09ae77710b200360862d33";
  };

  propagatedBuildInputs = [ uuv-trajectory-control uuv-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
