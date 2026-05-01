
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-automotive-autonomy-msgs";
  version = "3.0.4-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/lyrical/automotive_autonomy_msgs/3.0.4-7.tar.gz";
    name = "3.0.4-7.tar.gz";
    sha256 = "b0a299de584137c6022dab9828a7568a3ebb42fa5faae24245604a47ea9448e3";
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
