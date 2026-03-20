
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_catkin, _unresolved_message_generation, _unresolved_message_runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-novatel-oem7-msgs";
  version = "4.3.0-r2";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/kilted/novatel_oem7_msgs/4.3.0-2.tar.gz";
    name = "4.3.0-2.tar.gz";
    sha256 = "59612f8767e47f5111f7c0c466c99a8d9f64a3b67d28b4a95fd3b7351fed7fd5";
  };

  buildType = "catkin";
  buildInputs = [ _unresolved_catkin _unresolved_message_generation ];
  propagatedBuildInputs = [ _unresolved_message_runtime std-msgs ];
  nativeBuildInputs = [ _unresolved_catkin ];

  meta = {
    description = "Messages for NovAtel Oem7 family of receivers.";
    license = with lib.licenses; [ mit ];
  };
}
