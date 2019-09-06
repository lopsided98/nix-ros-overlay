
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-abb-resources";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_resources/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "26d97f8ab376d314e765b682243f0566d151ab825cdd026ed71d9d12efbdc7ff";
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
