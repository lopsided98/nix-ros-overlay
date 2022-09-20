
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-baldor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/crigroup/baldor-release/archive/release/melodic/baldor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9be26171300296c42581caf9a732d6671529768f61c1a6fc8895197a1e6d0969";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The baldor package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
