
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tango-icon-theme }:
buildRosPackage {
  pname = "ros-rolling-tango-icons-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tango_icons_vendor-release/archive/release/rolling/tango_icons_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ac18880ad98bba2ebff9ef88e67f7837a49a62d18f90b7c10fc75d0e4d8aed26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tango-icon-theme ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tango_icons_vendor provides the public domain Tango icons for non-linux systems (<a href="http://tango-project.org/Tango_Icon_Library/">Tango Icon Library</a>) from the <a href="http://tango-project.org/Tango_Desktop_Project/">Tango Desktop Project</a>'';
    license = with lib.licenses; [ asl20 publicDomain ];
  };
}
