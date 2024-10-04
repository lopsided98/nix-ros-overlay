
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "1c20de72609fca45d7a58d1c0a19331a08c3aa996d669901991bbb89c1892c38";
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
