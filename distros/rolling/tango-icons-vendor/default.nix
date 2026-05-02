
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tango-icon-theme }:
buildRosPackage {
  pname = "ros-rolling-tango-icons-vendor";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tango_icons_vendor-release/archive/release/rolling/tango_icons_vendor/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "494b9a3d4def49ac40686b102d3a141cabf2f14e34f1ef411935f2d2a80257b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tango-icon-theme ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tango_icons_vendor provides the public domain Tango icons for non-linux systems (<a href=\"http://tango-project.org/Tango_Icon_Library/\">Tango Icon Library</a>) from the <a href=\"http://tango-project.org/Tango_Desktop_Project/\">Tango Desktop Project</a>";
    license = with lib.licenses; [ asl20 publicDomain ];
  };
}
