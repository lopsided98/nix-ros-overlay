
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, foros-msgs, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-foros-inspector";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/galactic/foros_inspector/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "2f5c99f8dc0bf77471a3a250080ec21d18b4c4cc28560aa41e4133370b110b6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ foros-msgs ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fail over ROS inspector'';
    license = with lib.licenses; [ asl20 ];
  };
}
