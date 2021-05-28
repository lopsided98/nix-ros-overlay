
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, nav-msgs, pcl-conversions, poco, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-bosch-locator-bridge";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/foxy/bosch_locator_bridge/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "198862ab0d43504568c8129df228af3bea299c162b0ff095dd7872fb3c66d143";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml nav-msgs pcl-conversions poco rclcpp rosidl-default-runtime std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The bosch_locator_bridge package'';
    license = with lib.licenses; [ asl20 ];
  };
}
