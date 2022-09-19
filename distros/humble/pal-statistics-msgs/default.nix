
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-statistics-msgs";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/humble/pal_statistics_msgs/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "b937f1bb1421b7398ae7ec381b667ad740196e675964e925d6c92a59ff0307c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Statistics msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
