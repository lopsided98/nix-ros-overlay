{
  lib,
  buildRosPackage,
  fetchFromGitHub,

  # nativeBuildInputs
  ament-cmake,

  # buildInputs

  # propagatedBuildInputs

  # checkInputs
  ament-cmake-copyright,
  ament-cmake-cppcheck,
  ament-cmake-cpplint,
  ament-cmake-flake8,
  ament-cmake-lint-cmake,
  ament-cmake-pep257,
  ament-cmake-ros,
  ament-cmake-uncrustify,
  ament-cmake-xmllint,
  ament-lint-auto,
  ament-lint-common,
  rclcpp,
  rmw-zenoh-cpp,
  zenoh-cpp-vendor,

  # nativeCheckInputs
  ament-copyright,
  ament-cppcheck,
  ament-cpplint,
  ament-flake8,
  ament-lint-cmake,
  ament-pep257,
  ament-uncrustify,
  ament-xmllint,
  writableTmpDirAsHomeHook,
}:
buildRosPackage rec {
  pname = "ros-lyrical-test-rmw-zenoh-cpp";
  version = "0.10.5";

  src = fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_zenoh";
    tag = version;
    hash = "sha256-+yCUf1kXkdFu9K+6tuoWz1F3aSuGhhXN7+SDVLjBBDU=";
  };
  sourceRoot = "source/test_rmw_zenoh_cpp";

  __structuredAttrs = true;
  strictDeps = true;

  buildType = "ament_cmake";

  nativeBuildInputs = [
    ament-cmake
  ];
  buildInputs = [
    ament-cmake
  ];
  propagatedBuildInputs = [
  ];
  checkInputs = [
    ament-cmake-ros
    ament-lint-auto
    ament-lint-common
    rclcpp
    rmw-zenoh-cpp
    zenoh-cpp-vendor
    ament-cmake-copyright
    ament-cmake-cppcheck
    ament-cmake-cpplint
    ament-cmake-flake8
    ament-cmake-lint-cmake
    ament-cmake-pep257
    ament-cmake-uncrustify
    ament-cmake-xmllint
  ];
  nativeCheckInputs = [
    ament-copyright
    ament-cppcheck
    ament-cpplint
    ament-flake8
    ament-lint-cmake
    ament-pep257
    ament-uncrustify
    ament-xmllint
    writableTmpDirAsHomeHook
  ];

  doCheck = true;

  meta = {
    description = "Test package for rmw_zenoh_cpp that uses rclcpp";
    license = with lib.licenses; [ asl20 ];
    homepage = "https://github.com/ros2/rmw_zenoh";
    platforms = lib.platforms.linux;
    maintainers = [ lib.maintainers.nim65s ];
  };
}
