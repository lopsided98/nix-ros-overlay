
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "84f7a8ef40830598690c31beea5005bcb3868a7f8a43bdfd957b7cf3a13a9ccd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-config-live clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for working with Clearpath Platforms from a ROS 2 desktop.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
