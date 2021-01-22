
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-abb-resources";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_resources/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "025b8ada36f5b3ab8c0c5c8f44c0ad488881d7c6db860be2f1f9eed56aa4b212";
  };

  buildType = "catkin";
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
