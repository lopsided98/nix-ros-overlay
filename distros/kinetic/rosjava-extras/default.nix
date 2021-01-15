
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosjava-bootstrap, rosjava-build-tools, rosjava-core, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-extras";
  version = "0.3.4";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava_extras-release/archive/release/kinetic/rosjava_extras/0.3.4-0.tar.gz";
    name = "0.3.4-0.tar.gz";
    sha256 = "5741f403e137a07cdb55a1c0ad196f8dd8a30d4cbe9a39111bc5a29073eda3b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosjava-bootstrap rosjava-build-tools rosjava-core sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra packages for rosjava_core'';
    license = with lib.licenses; [ asl20 ];
  };
}
