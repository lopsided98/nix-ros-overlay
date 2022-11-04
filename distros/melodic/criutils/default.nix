
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, cv-bridge, geometry-msgs, image-geometry, pythonPackages, resource-retriever, rostopic, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-criutils";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/crigroup/criutils-release/archive/release/melodic/criutils/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "f6cd15555a09722265c91234ab0c3e46c501a052cce3979a5fde66d86f0a0c51";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ baldor cv-bridge geometry-msgs image-geometry pythonPackages.numpy pythonPackages.termcolor resource-retriever rostopic sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
