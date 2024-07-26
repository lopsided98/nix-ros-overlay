
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-humble-octomap-mapping";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/humble/octomap_mapping/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "54925b116c89fefa6734fe7621fa12b340d304266846aeb1d8459012e452ec3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Mapping tools to be used with the <a href=\"https://octomap.github.io/\">OctoMap library</a>, implementing a 3D occupancy grid mapping.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
