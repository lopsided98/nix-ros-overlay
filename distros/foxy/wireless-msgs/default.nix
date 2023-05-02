
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-wireless-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/foxy/wireless_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c427bcad327672a5412ea0c05d8bc8d0e378b148e73b30e78c023c612cdf9f81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for describing a wireless network such as bitrate, essid, and link quality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
