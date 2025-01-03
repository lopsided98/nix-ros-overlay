
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-wireless-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/jazzy/wireless_msgs/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "a07a7ae799604632b9958109c59b3fa154b53d0f8f5e0a645b6e8ae25e3962ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for describing a wireless network such as bitrate, essid, and link quality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
