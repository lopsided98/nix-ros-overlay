
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-trackdlo-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/humble/trackdlo_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "db933a7839364cb51c43e0067f9fed9e15a07afaa26118e91992a38c5037254c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "TrackDLO2: Custom message definitions (reserved for future use)";
    license = with lib.licenses; [ bsd3 ];
  };
}
