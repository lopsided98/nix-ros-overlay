
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-maps";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_maps/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "921382508a91ab7e0d36398692684e978519f3f93a46cd75ca7b202539da0c16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Example maps in the lanelet2-format";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
