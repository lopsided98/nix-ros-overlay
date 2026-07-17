
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-offboard-sensors, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-desktop";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_desktop/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "919f3ae8997cb9f7be27d3f4419cffe46e79ea9a78d6e6c491aca11fb8daec44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-config-live clearpath-offboard-sensors clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for working with Clearpath Platforms from a ROS 2 desktop.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
