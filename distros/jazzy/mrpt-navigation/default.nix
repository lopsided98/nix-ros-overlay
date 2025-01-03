
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-map-server, mrpt-nav-interfaces, mrpt-pf-localization, mrpt-pointcloud-pipeline, mrpt-rawlog, mrpt-reactivenav2d, mrpt-tutorials }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-navigation";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_navigation/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "cd27315da8e6e1c73b32019ca673bb540e90720b4dff6b33aff04f4a9f955682";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mrpt-map-server mrpt-nav-interfaces mrpt-pf-localization mrpt-pointcloud-pipeline mrpt-rawlog mrpt-reactivenav2d mrpt-tutorials ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to https://wiki.ros.org/mrpt_navigation for further documentation.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
