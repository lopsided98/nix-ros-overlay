
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-dbw-msgs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_dbw_msgs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "13bf693aff81e884da8b719805c56c133dbc7407f8206dcd75c470807b030622";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''Messages for the New Eagle Raptor DBW kit interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
