
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-automotive-autonomy-msgs";
  version = "3.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/rolling/automotive_autonomy_msgs/3.0.4-5.tar.gz";
    name = "3.0.4-5.tar.gz";
    sha256 = "115810dbc90dc2bda5fd419a21c14f54bb802dd2ce1c2df8701fc0754e3ca373";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for vehicle automation";
    license = with lib.licenses; [ mit ];
  };
}
