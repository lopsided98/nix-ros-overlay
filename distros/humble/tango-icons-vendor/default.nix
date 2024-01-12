
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tango-icon-theme }:
buildRosPackage {
  pname = "ros-humble-tango-icons-vendor";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tango_icons_vendor-release/archive/release/humble/tango_icons_vendor/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "4b7c65a3e74f2f8bc3cfeea5a129b83e94da7440ef3bca1898d32348f97f7d02";
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
