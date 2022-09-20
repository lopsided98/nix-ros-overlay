
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-abb-resources";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/melodic/abb_resources/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "e21bc080006c798014a924a0974d6e6af9e375c76a336651316936af4231d825";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Shared configuration data for ABB manipulators.
    </p>
    <p>
      This package contains common urdf / xacro resources used by
      ABB related packages.
    </p>'';
    license = with lib.licenses; [ asl20 ];
  };
}
