
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-abb-resources";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_resources/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "0c015c5433b419b0f00e4e29383d394b1950cdf8ded034445e1ca7cbce232828";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      Shared configuration data for ABB manipulators.
    </p>
    <p>
      This package contains common urdf / xacro resources used by
      ABB related packages.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}
