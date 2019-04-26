
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, catkin, uuv-teleop }:
buildRosPackage {
  pname = "ros-melodic-eca-a9-control";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/eca_a9-release/archive/release/melodic/eca_a9_control/0.1.6-0.tar.gz;
    sha256 = "2c5e9d6e0a17f5cf7b07029ac6e1df1dbcb1d47b77737b8c1d5a1eefd3254c1e";
  };

  propagatedBuildInputs = [ uuv-trajectory-control uuv-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the ECA A9 AUV'';
    #license = lib.licenses.Apache-2.0;
  };
}
