
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, diagnostic-updater, gtest, marti-common-msgs, nav-msgs, rclcpp, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-swri-roscpp";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_roscpp/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "23d0e9ee6ab78e21212aa8bf39f00eb78a385f73558fde9e29c60711e4578d6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-cmake ];
  checkInputs = [ ament-cmake-gtest gtest ];
  propagatedBuildInputs = [ boost diagnostic-updater marti-common-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
