
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-pcl-msgs";
  version = "1.0.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pcl_msgs-release/archive/release/kilted/pcl_msgs/1.0.0-9.tar.gz";
    name = "1.0.0-9.tar.gz";
    sha256 = "d68a277faf0e12b47fea1c4ab01120b164c32c24e09fd22c32a6b6fdf6e484d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Package containing PCL (Point Cloud Library)-related ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
