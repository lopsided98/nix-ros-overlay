
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-map-server, mrpt-nav-interfaces, mrpt-pf-localization, mrpt-pointcloud-pipeline, mrpt-rawlog, mrpt-reactivenav2d, mrpt-tutorials }:
buildRosPackage {
  pname = "ros-iron-mrpt-navigation";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/iron/mrpt_navigation/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "5299c387e45fb97f8e117ce18b9edd8cf0d54ce8e9dcf76cd65d86bc16d7b5fa";
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
