
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosjava-build-tools, sensor-msgs, catkin, rosjava-bootstrap, rosjava-core }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-extras";
  version = "0.3.4";

  src = fetchurl {
    url = https://github.com/rosjava-release/rosjava_extras-release/archive/release/kinetic/rosjava_extras/0.3.4-0.tar.gz;
    sha256 = "5741f403e137a07cdb55a1c0ad196f8dd8a30d4cbe9a39111bc5a29073eda3b6";
  };

  buildInputs = [ sensor-msgs rosjava-build-tools rosjava-core rosjava-bootstrap ];
  propagatedBuildInputs = [ sensor-msgs rosjava-build-tools rosjava-core rosjava-bootstrap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra packages for rosjava_core'';
    license = with lib.licenses; [ asl20 ];
  };
}
