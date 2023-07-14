
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5be940f2e098e16daf83e27e784cc86b86d8f25cd6ecf22bd8f29407f6b5d08e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for working with Clearpath Platforms from a ROS 2 desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
