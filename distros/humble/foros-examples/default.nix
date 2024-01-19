
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, foros, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-foros-examples";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/humble/foros_examples/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "69b5eba18238cf6b4156b0179d841eb11bbb8a0e9484a7af8ac9419b12e3d380";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ foros rclcpp std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fail over ROS examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
