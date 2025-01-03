
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-automotive-autonomy-msgs";
  version = "3.0.4-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/jazzy/automotive_autonomy_msgs/3.0.4-6.tar.gz";
    name = "3.0.4-6.tar.gz";
    sha256 = "84a39e179e41ea633fbff1d85d2a3604c16cd09cbce092965413662af6012178";
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
