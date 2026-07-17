
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-wireless-msgs";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/jazzy/wireless_msgs/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "1eb2fdfa4a3b6488d1a6b1bcb832327cbfd56249b99442fa88f0c69f61a50f51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for describing a wireless network such as bitrate, essid, and link quality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
