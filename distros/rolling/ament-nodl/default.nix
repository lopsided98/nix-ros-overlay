
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-nodl";
  version = "0.1.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/rolling/ament_nodl/0.1.0-6.tar.gz";
    name = "0.1.0-6.tar.gz";
    sha256 = "3e53a43fdca6814bf8a0c8ca1c09e874920cfd5dfd755e47bab21f55557213ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ament extension for exporting NoDL .xml files'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
