
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-trackdlo-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/jazzy/trackdlo_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "0c7433fd8f48c97dbecd4814cc5e2dbfaabe0c8aa5fc2fe81771945ce986c62e";
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
