
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, cv-bridge, geometry-msgs, image-geometry, python3Packages, resource-retriever, rostopic, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-criutils";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/crigroup/criutils-release/archive/release/noetic/criutils/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "04ebb642b895d176a9a777f4f2e0493a25a17a3f3e990e7617e21a7184fb4918";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ baldor cv-bridge geometry-msgs image-geometry python3Packages.numpy python3Packages.termcolor resource-retriever rostopic sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
