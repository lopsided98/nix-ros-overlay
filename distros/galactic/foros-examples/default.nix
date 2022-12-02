
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, foros, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-galactic-foros-examples";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/galactic/foros_examples/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "64b31d3f545f0fc9d4086a22d7245393898351470c622ea849b59f5799c6e118";
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
