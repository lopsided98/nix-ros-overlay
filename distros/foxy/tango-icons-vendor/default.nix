
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-tango-icons-vendor";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tango_icons_vendor-release/archive/release/foxy/tango_icons_vendor/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "90d9bbe7a9e1ad18345098ec72b7b24aec9ef6b4d7b21dbf7da0d62756e15132";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tango_icons_vendor provides the public domain Tango icons for non-linux systems (<a href="http://tango-project.org/Tango_Icon_Library/">Tango Icon Library</a>) from the <a href="http://tango-project.org/Tango_Desktop_Project/">Tango Desktop Project</a>'';
    license = with lib.licenses; [ asl20 publicDomain ];
  };
}
